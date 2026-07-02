.class public Lcom/amazon/kcp/history/HistoryPlugin;
.super Ljava/lang/Object;
.source "HistoryPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "HistoryPlugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
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

    .line 14
    sget-object v0, Lcom/amazon/kcp/debug/HistoryDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/HistoryDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/HistoryDebugUtils;->isHistoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/history/HistoryLandingScreenActionProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerLandingScreenActionProvider(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V

    :cond_0
    return-void
.end method
