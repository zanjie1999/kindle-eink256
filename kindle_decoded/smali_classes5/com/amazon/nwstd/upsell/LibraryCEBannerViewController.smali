.class public Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;
.super Ljava/lang/Object;
.source "LibraryCEBannerViewController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBannerView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mKindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private mLibraryCEBannerContentController:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

.field private mPFM:Ljava/lang/String;

.field private mXfsn:Ljava/lang/String;

.field private mXmain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->getInstance()Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mLibraryCEBannerContentController:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    .line 112
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mKindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 113
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->setLibraryUIManager(Lcom/amazon/kindle/krx/ui/ILibraryUIManager;)V

    .line 114
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->fetchBanner()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mKindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->handleAcceptClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->handleDeclineClick()V

    return-void
.end method

.method private fetchBanner()Landroid/view/View;
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    sget v1, Lcom/amazon/kindle/newsstand/core/R$layout;->library_ce_banner:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getBannerHeight()I
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 133
    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->library_banner_height:I

    .line 134
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->library_banner_height:I

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.25"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->library_banner_height_for_large_font:I

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1.5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->library_banner_height_for_huge_font:I

    :cond_2
    :goto_0
    return v1
.end method

.method private handleAcceptClick()V
    .locals 3

    .line 250
    invoke-static {}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->getStoreManager()Lcom/amazon/nwstd/store/INewsstandStoreManager;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    const-string v2, "LIBRARY_BANNER"

    invoke-interface {v0, v1, v2}, Lcom/amazon/nwstd/store/INewsstandStoreManager;->openInterstitialPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->ACCEPT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->reportLibraryBannerClickEvent(Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;Landroid/content/Context;)V

    .line 255
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NewsstandContentExplorerCampaign"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleDeclineClick()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/upsell/HomeBannerContentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/HomeBannerContentController;->removeHomeBanner()V

    .line 265
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 266
    invoke-static {}, Lcom/amazon/nwstd/modules/FosVersionInNewsstand;->getFosVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/nwstd/modules/FosVersionInNewsstand;->getFosVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fos4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {v1, v1}, Lcom/amazon/nwstd/cms/NewsstandCMSUtils;->removeLibraryBanner(ZZ)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {v1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeLibraryBanner(ZZ)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-static {v1, v1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->removeLibraryBanner(ZZ)V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "upsell.library.decline"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->notifyDeclineToStore()V

    .line 276
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->DECLINE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    if-eqz v0, :cond_2

    .line 278
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->reportLibraryBannerClickEvent(Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;Landroid/content/Context;)V

    .line 279
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NewsstandContentExplorerCampaign"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->hideBanner()V

    .line 282
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mKindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/DecorationPosition;->TOP:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->refreshLibraryDecoration(Lcom/amazon/kindle/krx/ui/DecorationPosition;)V

    return-void
.end method

.method private hideBanner()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 205
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadReaderData()Z
    .locals 3

    .line 326
    new-instance v0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;-><init>(Landroid/content/Context;)V

    .line 327
    invoke-virtual {v0}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->preloadReaderData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    sget-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "failed to load tokens, sync is aborted"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getCookie()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mXfsn:Ljava/lang/String;

    .line 337
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getPFM()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mPFM:Ljava/lang/String;

    .line 338
    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_COOKIES:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mXmain:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private notifyDeclineToStore()V
    .locals 5

    .line 290
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isDataConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "NewsstandContentExplorerCampaign"

    const-string v2, "CEStoreConnectionOnDeclineOffline"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->loadReaderData()Z

    move-result v0

    .line 298
    :try_start_0
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v1

    .line 299
    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->CAMPAIGN_ID:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v3, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->getResources(Lcom/amazon/nwstd/resources/DynamicResourceTargetType;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 301
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 302
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/resources/DynamicResource;

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v1}, Lcom/amazon/nwstd/resources/DynamicResource;->getReference()Ljava/lang/String;

    move-result-object v4

    .line 307
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-nez v0, :cond_3

    .line 310
    sget-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "Failed to send the decline information to store because of unknown PFM and X-FSN"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->cacheCampaignIdDeclined(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void

    .line 315
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mXfsn:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mXmain:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mPFM:Ljava/lang/String;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->notifyDeclineToStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 318
    throw v0
.end method

.method private shouldShowBanner(Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;)Z
    .locals 8

    .line 225
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    .line 226
    sget-object v1, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandPurchaseBlocked()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    .line 227
    invoke-static {v4}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v4

    const-string/jumbo v6, "upsell.library.decline"

    invoke-virtual {v4, v6}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsBoolean(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v2, v7

    const-string v4, "ShouldShowBanner  : %s %b %b"

    .line 226
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getAcceptText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getDeclineText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandPurchaseBlocked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    .line 234
    invoke-static {p1}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method


# virtual methods
.method public getBanner()Landroid/view/View;
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mLibraryCEBannerContentController:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->getLibraryCEBannerContent()Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->reportGetBannerMetrics()V

    .line 152
    invoke-direct {p0, v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->shouldShowBanner(Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 153
    sget-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->TAG:Ljava/lang/String;

    const-string v1, "ShouldShowBanner  : false"

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->hideBanner()V

    .line 155
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    return-object v0

    .line 157
    :cond_0
    sget-object v1, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->TAG:Ljava/lang/String;

    const-string v3, "ShouldShowBanner  : true"

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/newsstand/core/R$id;->library_banner_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/newsstand/core/R$id;->library_banner_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/newsstand/core/R$id;->library_banner_accept:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 164
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getAcceptText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/newsstand/core/R$id;->library_banner_decline:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 166
    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getDeclineText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v3, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController$1;

    invoke-direct {v3, p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController$1;-><init>(Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;)V

    .line 183
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;->getBackgroundImageURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->getBannerHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 189
    iget-object v2, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v1, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_1

    .line 192
    sget-object v0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "Unable to load image for newsstand banner"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Newsstand"

    const-string v2, "BANNER_IMAGE_LOAD_FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->hideBanner()V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mBannerView:Landroid/view/View;

    return-object v0
.end method

.method public reportGetBannerMetrics()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->mLibraryCEBannerContentController:Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerContentController;->getLibraryCEBannerContent()Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/upsell/LibraryCEBannerViewController;->shouldShowBanner(Lcom/amazon/nwstd/upsell/LibraryCEBannerContent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Newsstand"

    const-string v2, "NEWSSTAND_BANNER"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
