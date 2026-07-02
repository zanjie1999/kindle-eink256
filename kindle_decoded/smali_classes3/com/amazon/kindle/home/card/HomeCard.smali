.class public interface abstract Lcom/amazon/kindle/home/card/HomeCard;
.super Ljava/lang/Object;
.source "HomeCard.kt"


# virtual methods
.method public abstract bindView(Landroid/view/View;Lcom/amazon/kindle/home/card/HomeWidgetListener;Lcom/amazon/kindle/home/action/HomeActionManager;)V
.end method

.method public abstract getHasBeenShownToUser()Z
.end method

.method public abstract getPriority()I
.end method

.method public abstract getState()Lcom/amazon/kindle/home/card/HomeCardState;
.end method

.method public abstract getViewLayoutId()I
.end method

.method public abstract onConfigurationChange()V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract reportImpressionData(Z)V
.end method

.method public abstract setDisplayPosition(I)V
.end method

.method public abstract setHasBeenShownToUser(Z)V
.end method
