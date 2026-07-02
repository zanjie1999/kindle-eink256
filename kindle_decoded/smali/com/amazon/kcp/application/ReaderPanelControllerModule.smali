.class public Lcom/amazon/kcp/application/ReaderPanelControllerModule;
.super Ljava/lang/Object;
.source "ReaderPanelControllerModule.java"


# direct methods
.method static providesPanelController()Lcom/amazon/kindle/panels/IPanelController;
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/kindle/panels/ReaderPanelController;

    invoke-direct {v0}, Lcom/amazon/kindle/panels/ReaderPanelController;-><init>()V

    return-object v0
.end method
