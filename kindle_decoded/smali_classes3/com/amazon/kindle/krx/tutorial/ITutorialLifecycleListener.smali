.class public interface abstract Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;
.super Ljava/lang/Object;
.source "ITutorialLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;,
        Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;,
        Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;
    }
.end annotation


# virtual methods
.method public abstract onBrochureNavigation(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V
.end method

.method public abstract onDialogButtonClicked(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;)V
.end method

.method public abstract onTutorialDismissed(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V
.end method

.method public abstract onTutorialShown()V
.end method
