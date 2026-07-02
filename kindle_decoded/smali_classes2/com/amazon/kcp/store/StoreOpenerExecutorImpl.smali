.class public final Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;
.super Ljava/lang/Object;
.source "StoreOpenerExecutorImpl.java"

# interfaces
.implements Lcom/amazon/kcp/store/StoreOpenerExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static intentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;
    .locals 1

    .line 128
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    return-object v0
.end method

.method private static launchIntent(Landroid/content/Intent;Z)V
    .locals 1

    .line 137
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/WebStoreController;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kcp/store/WebStoreController;->launchIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method private static storePathProvider()Lcom/amazon/kcp/store/StorePathProvider;
    .locals 1

    .line 133
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStorePathProvider()Lcom/amazon/kcp/store/StorePathProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/store/ArticleOpener;)V
    .locals 4

    .line 79
    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->intentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->storePathProvider()Lcom/amazon/kcp/store/StorePathProvider;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/store/ArticleOpener;->getArticleMetadata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createLoadArticleIntent(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 81
    invoke-static {p1, v0}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->launchIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public execute(Lcom/amazon/kcp/store/AuthorPageOpener;)V
    .locals 0

    return-void
.end method

.method public execute(Lcom/amazon/kcp/store/BookDetailsOpener;)V
    .locals 9

    .line 31
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BookDetailsOpener;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {v1, p1}, Lcom/amazon/kcp/store/StoreScreenlet;->newIntentForBookDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    .line 35
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->launchScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->intentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BookDetailsOpener;->getAsin()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 37
    invoke-interface/range {v1 .. v8}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createShowPageIntent(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 39
    invoke-static {p1, v0}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->launchIntent(Landroid/content/Intent;Z)V

    :goto_0
    return-void
.end method

.method public execute(Lcom/amazon/kcp/store/BrowseNodeOpener;)V
    .locals 3

    .line 109
    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->intentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BrowseNodeOpener;->getBrowseNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createBrowseNodeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 111
    invoke-static {p1, v0}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->launchIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public execute(Lcom/amazon/kcp/store/BuyPageOpener;)V
    .locals 8

    .line 102
    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->intentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BuyPageOpener;->getAsin()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BuyPageOpener;->getAmount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BuyPageOpener;->getCurrency()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 102
    invoke-interface/range {v0 .. v7}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createShowPageIntent(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 104
    invoke-static {p1, v0}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->launchIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public execute(Lcom/amazon/kcp/store/FeatureDocOpener;)V
    .locals 4

    .line 116
    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->intentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/FeatureDocOpener;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kcp/store/FeatureDocOpener;->getActionData()Ljava/util/Map;

    move-result-object p1

    .line 116
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createFeatureDocIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 118
    invoke-static {p1, v0}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->launchIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public execute(Lcom/amazon/kcp/store/SearchResultsOpener;)V
    .locals 5

    .line 86
    new-instance v0, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->storePathProvider()Lcom/amazon/kcp/store/StorePathProvider;

    move-result-object v2

    .line 89
    invoke-virtual {p1}, Lcom/amazon/kcp/store/SearchResultsOpener;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->getStoreDestination()Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;->RETAIL_WEB:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreDestination;

    if-ne v1, v2, :cond_0

    .line 93
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->intentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreSearchUrlBuilder;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/store/SearchResultsOpener;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, v0, p1}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createSearchUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 97
    invoke-static {p1, v0}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->launchIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public execute(Lcom/amazon/kcp/store/SeriesDetailsOpener;)V
    .locals 9

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kcp/store/SeriesDetailsOpener;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {v1, p1}, Lcom/amazon/kcp/store/StoreScreenlet;->newIntentForSeriesDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    .line 49
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->launchScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->intentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kcp/store/SeriesDetailsOpener;->getAsin()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN_SERIES:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 51
    invoke-interface/range {v1 .. v8}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createShowPageIntent(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 53
    invoke-static {p1, v0}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->launchIntent(Landroid/content/Intent;Z)V

    :goto_0
    return-void
.end method

.method public execute(Lcom/amazon/kcp/store/StorefrontOpener;)V
    .locals 6

    .line 24
    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->intentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StorefrontOpener;->getStoreType()Lcom/amazon/kindle/store/StoreType;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 24
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createShowStorefrontIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/amazon/kindle/store/StoreType;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 26
    invoke-static {p1, v0}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->launchIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public execute(Lcom/amazon/kcp/store/UrlOpener;)V
    .locals 4

    .line 59
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getPageTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kcp/store/UrlOpener;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/amazon/kcp/store/StoreScreenlet;->newIntentForUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/store/UrlOpener;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kcp/store/StoreScreenlet;->newIntentForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    .line 68
    :goto_0
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->launchScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    goto :goto_1

    .line 70
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->intentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/UrlOpener;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/store/BaseStoreOpener;->getReferralTag()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/amazon/kcp/store/UrlOpener;->getForceNewTask()Z

    move-result p1

    .line 73
    invoke-static {v0, p1}, Lcom/amazon/kcp/store/StoreOpenerExecutorImpl;->launchIntent(Landroid/content/Intent;Z)V

    :goto_1
    return-void
.end method
