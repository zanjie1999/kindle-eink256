.class public interface abstract Lcom/amazon/kindle/panels/IPanelController;
.super Ljava/lang/Object;
.source "IPanelController.java"


# virtual methods
.method public abstract bindPanelContent(Lcom/amazon/kindle/panels/PanelProviderState;Lcom/amazon/kindle/panels/PanelLocation;)V
.end method

.method public abstract clearSidePanelLayout()V
.end method

.method public abstract closePanel(Lcom/amazon/kindle/panels/PanelLocation;)V
.end method

.method public abstract closePanel(Lcom/amazon/kindle/panels/PanelLocation;Ljava/lang/Runnable;)V
.end method

.method public abstract closePanels()V
.end method

.method public abstract getLeftPanelProviderRegistry()Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/factory/KindleObjectProviderRegistry<",
            "Lcom/amazon/kindle/panels/PanelProvider<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/amazon/kindle/panels/PanelProviderState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSidePanelLayout()Landroid/view/View;
.end method

.method public abstract isTOCPanelOpened()Z
.end method

.method public abstract openPanel(Lcom/amazon/kindle/panels/PanelLocation;)V
.end method

.method public abstract release(Landroid/app/Activity;Lcom/amazon/kindle/panels/PanelLocation;)V
.end method

.method public abstract setMainContent(Landroid/view/View;)V
.end method

.method public abstract setMainContentFromStackForActivity(Landroid/app/Activity;)V
.end method
