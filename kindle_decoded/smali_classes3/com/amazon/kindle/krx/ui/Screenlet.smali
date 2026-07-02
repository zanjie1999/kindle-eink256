.class public interface abstract Lcom/amazon/kindle/krx/ui/Screenlet;
.super Ljava/lang/Object;
.source "Screenlet.java"


# virtual methods
.method public abstract canGoBack()Z
.end method

.method public abstract createCustomHeaderView(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getHeaderMode()Lcom/amazon/kindle/krx/ui/HeaderMode;
.end method

.method public abstract getHeaderTitle()Ljava/lang/String;
.end method

.method public abstract getMetricsTag()Ljava/lang/String;
.end method

.method public abstract getStatusForMetrics()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onActivate()V
.end method

.method public abstract onAttach()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onDeactivate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onGoBack()V
.end method

.method public abstract onGoBackToBeginning()V
.end method

.method public abstract onNewIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onReset(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
.end method

.method public abstract onResume()V
.end method
