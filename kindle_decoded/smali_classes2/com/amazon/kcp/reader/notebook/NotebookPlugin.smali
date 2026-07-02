.class public Lcom/amazon/kcp/reader/notebook/NotebookPlugin;
.super Ljava/lang/Object;
.source "NotebookPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    name = "NotebookPlugin"
.end annotation


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/notebook/NotebookPlugin;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/reader/notebook/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p0

    return-object p0
.end method

.method private getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
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

    const-string v0, "KeduFTUEPlugin"

    .line 65
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 29
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/notebook/NotebookPlugin$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/notebook/NotebookPlugin$1;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookPlugin;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 36
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/notebook/NotebookPlugin$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/notebook/NotebookPlugin$2;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookPlugin;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 44
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->getInstance()Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->registerNotebookFTUETutorial(Landroid/content/Context;)V

    .line 47
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->getInstance()Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookActivity;->setNotebookTutorialProvider(Lcom/amazon/kcp/reader/notebook/INotebookTutorialProvider;)V

    .line 50
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/notebook/NotebookPluginJITProvider;-><init>()V

    .line 51
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getTutorialManager()Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/tutorial/ITutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    .line 52
    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookActivity;->setNotebookPluginEventsListener(Lcom/amazon/notebook/module/INotebookPluginEventsListener;)V

    .line 54
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNotebookSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookSearchProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/notebook/NotebookSearchProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->registerSearchProvider(Lcom/amazon/kindle/krx/search/ISearchProvider;)V

    :cond_1
    return-void
.end method
