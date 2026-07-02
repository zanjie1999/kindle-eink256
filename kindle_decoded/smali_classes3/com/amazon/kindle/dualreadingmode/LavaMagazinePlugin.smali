.class public Lcom/amazon/kindle/dualreadingmode/LavaMagazinePlugin;
.super Ljava/lang/Object;
.source "LavaMagazinePlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_before:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "Lava magazine plugin"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
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

    .line 22
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/dualreadingmode/SwitchReadingModeCustomButtonProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/dualreadingmode/SwitchReadingModeCustomButtonProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 24
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/dualreadingmode/KeepThisIssueButtonProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/dualreadingmode/KeepThisIssueButtonProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    :cond_0
    return-void
.end method
