.class public Lcom/amazon/kcp/store/WebStoreController;
.super Lcom/amazon/kcp/store/AbstractWebStoreController;
.source "WebStoreController.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IAndroidApplicationController;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/AbstractWebStoreController;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    return-void
.end method


# virtual methods
.method public clearStoreCredentials()V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->requiresStoreCredentials:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string v1, "store_cookies"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/CookieJar;->removeCookies(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected launchIntent(Landroid/content/Intent;Z)V
    .locals 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/WebStoreController;->shouldLaunchIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/amazon/kindle/network/WirelessUtils;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    const/4 p2, 0x0

    const-string v0, "ConnectionError"

    invoke-interface {p1, v0, p2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "StoreStartupTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/WebStoreController;->onBeforeStartActivity(Landroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method protected onBeforeStartActivity(Landroid/content/Intent;)V
    .locals 3

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/amazon/kcp/store/RubyStoreActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public populateStoreCredentials(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V
    .locals 6

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;->getCookieList()Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 97
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->get(I)Lcom/amazon/foundation/internal/WebServiceModel;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/store/models/internal/StoreCookie;

    if-eqz v4, :cond_0

    .line 99
    invoke-virtual {v4}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazon/kcp/store/models/internal/StoreCookie;->getCookieValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v1

    const-string v2, "store_cookies"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/store/CookieJar;->saveCookiesToSecureStorageAndJar(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    sget-object p1, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATE_FAILED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/AbstractWebStoreController;->publishCredentialEvent(Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;)V

    .line 105
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "WebStoreController"

    const-string v2, "UpdateCredentailsFailed"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 108
    :cond_2
    invoke-super {p0, p1}, Lcom/amazon/kcp/store/AbstractWebStoreController;->populateStoreCredentials(Lcom/amazon/kcp/store/models/internal/StoreCredentialsModel;)V

    :goto_1
    return-void
.end method

.method protected shouldLaunchIntent(Landroid/content/Intent;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public showStore(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    check-cast v1, Lcom/amazon/kcp/application/AndroidApplicationController;

    .line 53
    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createShowStoreIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/store/WebStoreController;->launchIntent(Landroid/content/Intent;Z)V

    return-void
.end method
