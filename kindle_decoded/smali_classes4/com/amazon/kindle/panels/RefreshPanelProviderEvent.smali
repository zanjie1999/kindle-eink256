.class public Lcom/amazon/kindle/panels/RefreshPanelProviderEvent;
.super Ljava/lang/Object;
.source "RefreshPanelProviderEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private panelKey:Lcom/amazon/kindle/krx/ui/panels/PanelKey;


# virtual methods
.method public getPanelKey()Lcom/amazon/kindle/krx/ui/panels/PanelKey;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/panels/RefreshPanelProviderEvent;->panelKey:Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
