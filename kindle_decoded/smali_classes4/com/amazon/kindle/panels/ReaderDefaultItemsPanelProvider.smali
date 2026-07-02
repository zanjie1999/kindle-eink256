.class public Lcom/amazon/kindle/panels/ReaderDefaultItemsPanelProvider;
.super Ljava/lang/Object;
.source "ReaderDefaultItemsPanelProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_after:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "DefaultItemsPanelPlugin"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 20
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/panels/GoToItemPanelProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/panels/GoToItemPanelProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V

    .line 22
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/panels/SyncItemPanelProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/panels/SyncItemPanelProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V

    .line 23
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/panels/GotoBeginningItemPanelProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/panels/GotoBeginningItemPanelProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V

    :cond_0
    return-void
.end method
