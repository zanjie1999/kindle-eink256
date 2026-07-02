.class final Lcom/amazon/kcp/store/ArticleOpener;
.super Lcom/amazon/kcp/store/BaseStoreOpener;
.source "ArticleOpener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/store/BaseStoreOpener<",
        "Lcom/amazon/kcp/store/ArticleOpener;",
        ">;"
    }
.end annotation


# instance fields
.field private final articleMetadata:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/BaseStoreOpener;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 22
    iput-object p2, p0, Lcom/amazon/kcp/store/ArticleOpener;->articleMetadata:Ljava/lang/String;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "articleMetadata is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 33
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ConnectionError"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_0
    const-class v0, Lcom/amazon/kcp/store/StoreOpenerExecutor;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreOpenerExecutor;

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {v0, p0}, Lcom/amazon/kcp/store/StoreOpenerExecutor;->execute(Lcom/amazon/kcp/store/ArticleOpener;)V

    :cond_1
    return-void
.end method

.method getArticleMetadata()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/store/ArticleOpener;->articleMetadata:Ljava/lang/String;

    return-object v0
.end method

.method getThis()Lcom/amazon/kcp/store/ArticleOpener;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getThis()Lcom/amazon/kcp/store/BaseStoreOpener;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/amazon/kcp/store/ArticleOpener;->getThis()Lcom/amazon/kcp/store/ArticleOpener;

    return-object p0
.end method
