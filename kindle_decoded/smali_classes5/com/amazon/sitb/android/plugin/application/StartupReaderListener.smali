.class public Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;
.super Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;
.source "StartupReaderListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;
.implements Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;


# instance fields
.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    .line 27
    iput-object p2, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private ensurePluginEnabled()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    iget-object v1, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->ensureEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method


# virtual methods
.method public getProperty(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 123
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPricePropertyProvider()Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;->getProperty(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 116
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPricePropertyProvider()Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 109
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPricePropertyProvider()Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/PricePropertyProvider;->getPropertyKeys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized handlePfmCorChangedEvent(Lcom/amazon/kindle/krx/events/PFMCORChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 39
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getPfmCorChangedHandler()Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/plugin/application/PfmCorChangedHandler;->handlePfmCorChangedEvent(Lcom/amazon/kindle/krx/events/PFMCORChangedEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 74
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationReaderNavigationListener()Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 67
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationReaderNavigationListener()Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 81
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationReaderNavigationListener()Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 88
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationReaderNavigationListener()Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public onContentAdd(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 46
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationLibraryEventListener()Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->onContentAdd(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onContentDelete(Ljava/lang/String;Z)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 60
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationLibraryEventListener()Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->onContentDelete(Ljava/lang/String;Z)V

    return-void
.end method

.method public onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 53
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationLibraryEventListener()Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationLibraryEventListener;->onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 95
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationReaderNavigationListener()Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->ensurePluginEnabled()V

    .line 102
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/StartupReaderListener;->upsellApplicationPlugin:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getApplicationReaderNavigationListener()Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderNavigationListener;->onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method
