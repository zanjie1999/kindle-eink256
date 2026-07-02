.class public Lcom/amazon/kindle/panels/PopularHighlightsPanelItem;
.super Ljava/lang/Object;
.source "PopularHighlightsPanelItem.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "Popular Highlights Panel Button"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$SimpleTextComponent;,
        Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$PHLPanelRow;
    }
.end annotation


# instance fields
.field panelRow:Lcom/amazon/kindle/krx/ui/panels/IPanelRow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
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
    .locals 1

    .line 43
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$PHLPanelRow;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$PHLPanelRow;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem;->panelRow:Lcom/amazon/kindle/krx/ui/panels/IPanelRow;

    .line 45
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/panels/PopularHighlightsPanelItem$1;-><init>(Lcom/amazon/kindle/panels/PopularHighlightsPanelItem;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V

    :cond_0
    return-void
.end method
